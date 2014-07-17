class YouTubeIt
  module Model
    class Comment < YouTubeIt::Record
      attr_reader :content, :published, :title, :updated, :url, :reply_to

      # YouTubeIt::Model::Author:: Information about the YouTube user who owns a piece of video content.
      attr_reader :author
      attr_reader :channel_id
      attr_reader :gp_user_id
      attr_reader :reply_to
      attr_reader :reply_count
      attr_reader :video_id

      # unique ID of the comment.
      def unique_id
        url.split(":").last
      end
    end
  end
end

