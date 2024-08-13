module Oracle
  class << self
    def version
      @version ||= Semver.new(ENV.fetch("APP_VERSION", "0.1.0"))
    end

    def commit_sha
      @commit_sha ||= ENV.fetch("APP_COMMIT_SHA", "unknown")
    end
  end
end
