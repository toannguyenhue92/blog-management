package toan.blog2.controller;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import toan.blog2.model.Blog;
import toan.blog2.service.BlogService;

@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private BlogService blogService;

    @GetMapping("")
    public String getBlogList(Model model) {
        model.addAttribute("blogs", blogService.findAll());
        return "blog/home";
    }

    @GetMapping("/create")
    public String getFormNewBlog(Model model) {
        model.addAttribute("blog", new Blog());
        return "blog/new_blog";
    }

    @PostMapping("/create")
    public String saveBlog(@Valid @ModelAttribute(name = "blog") Blog blog,
            BindingResult bindingResult,
            RedirectAttributes redirectAttributes) {
        if (bindingResult.hasErrors()) {
            return "blog/new_blog";
        }
        blogService.save(blog);
        redirectAttributes.addFlashAttribute("message", "Added successfully!");
        return "redirect:/blog";
    }

    @GetMapping("/{id}")
    public String getBlogDetails(@PathVariable(name = "id") Integer id,
            Model model) {
        Blog blog = blogService.findById(id);
        if (blog == null) {
            return "blog/404";
        }
        model.addAttribute("title", blog.getTitle());
        model.addAttribute("blog", blog);
        return "blog/blog_details";
    }

    @GetMapping("/edit/{id}")
    public String getFormBlogEdit(@PathVariable(name = "id") Integer id,
            Model model) {
        Blog blog = blogService.findById(id);
        if (blog == null) {
            return "blog/404";
        }
        model.addAttribute("blog", blog);
        return "blog/edit_blog";
    }

    @PostMapping("/edit")
    public String updateBlog(@Valid @ModelAttribute(name = "blog") Blog blog,
            BindingResult bindingResult,
            RedirectAttributes redirectAttributes) {
        blogService.save(blog);
        redirectAttributes.addFlashAttribute("message",
                "Updated successfully!");
        return "redirect:/blog";
    }

    @GetMapping("/delete/{id}")
    public String getFormDeleteBlog(@PathVariable(name = "id") Integer id,
            Model model) {
        Blog blog = blogService.findById(id);
        if (blog == null) {
            return "blog/404";
        }
        model.addAttribute("blog", blog);
        model.addAttribute("disableBlog", true);
        return "blog/blog_details";
    }

    @PostMapping("/delete")
    public String deleteBlog(@RequestParam(name = "id") Integer id,
            RedirectAttributes redirectAttributes) {
        Blog blog = blogService.findById(id);
        if (blog == null) {
            return "blog/404";
        }
        blog.setStatus(false);
        blogService.save(blog);
        redirectAttributes.addFlashAttribute("message",
                "Deleted successfully!");
        return "redirect:/blog";
    }
}
