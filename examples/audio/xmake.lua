includes("option.lua")
--audio
target("audio_music_stream")
    set_kind("binary")
    add_files("audio_music_stream.cpp")
    after_build(function (target)
        import("core.project.config")
        os.cp("$(scriptdir)/resources", "$(buildir)/$(host)/$(arch)/$(mode)")
        print("资源:%s","$(buildir)/$(host)/$(arch)/$(mode)")
    end)

target("audio_sound_loading")
    set_kind("binary")
    add_files("audio_sound_loading.cpp")
    after_build(function (target)
        import("core.project.config")
        os.cp("$(scriptdir)/resources", "$(buildir)/$(host)/$(arch)/$(mode)")
        print("资源:%s","$(buildir)/$(host)/$(arch)/$(mode)")
    end)