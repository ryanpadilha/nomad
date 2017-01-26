job "parameterized_job" {
    parameterized {
        payload = "required"
        meta_required = ["foo", "bar"]
        meta_optional = ["baz", "bam"]
    }
    group "foo" {
        task "bar" {
            driver = "docker"
            resources {}

            dispatch_payload {
                file = "foo/bar"
            }
        }
    }
}