# SPDX-License-Identifier: MPL-2.0
module StoryArchitect

using ..Types

export StoryTemplate, Longform, NewsBulletin, Thread, build_story_structure

abstract type StoryTemplate end

struct Longform <: StoryTemplate end
struct NewsBulletin <: StoryTemplate end
struct Thread <: StoryTemplate end

function build_story_structure(::Longform)
    return [
        "The Hook (The Finding)",
        "The Evidence (Data & Docs)",
        "The Narrative (Human Impact)",
        "The Rebuttal (Target Response)",
        "The Conclusion (The Stakes)"
    ]
end

function build_story_structure(::NewsBulletin)
    return [
        "The Headline (The Finding)",
        "The Lede (Why It Matters)",
        "The Evidence (Documents & Data)",
        "The Attribution (Who Confirms It)",
        "The Response (Right of Reply)",
        "The Development (What Happens Next)"
    ]
end

function build_story_structure(::Thread)
    return [
        "The Hook Post (The Finding)",
        "The Context Post (Background)",
        "The Evidence Posts (Documents & Data)",
        "The Rebuttal Post (Target Response)",
        "The Close (Sources & Call to Action)"
    ]
end

end # module
