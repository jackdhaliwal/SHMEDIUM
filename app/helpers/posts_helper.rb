module PostsHelper

    def image_for(post)
        if post.image_file_name.blank?
            image_tag('placeholder.png')
        else
            image_tag(post.image_file_name)
        end
    end


end
