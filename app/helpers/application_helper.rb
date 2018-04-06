module ApplicationHelper
    def gravatar_image(user, option = {size: 80})
        gravatar_id = Digest::MD5::hexdigest(user.email)
        size = option[:size]
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url, class: "img-circle")
    end

    def checklength(val)
        return val.length > 0
    end
end
