class Author

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select{ |post| post.author == self }
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post)
        new_post = Post.new(post)
        add_post(new_post)
    end

    def self.post_count
        Post.all.length
    end

end