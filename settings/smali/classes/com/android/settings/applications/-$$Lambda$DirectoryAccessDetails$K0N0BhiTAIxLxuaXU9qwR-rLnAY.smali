.class public final synthetic Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/DirectoryAccessDetails;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Landroid/net/Uri;

.field private final synthetic f$4:Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;

.field private final synthetic f$5:Landroid/support/v7/preference/PreferenceCategory;

.field private final synthetic f$6:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;Landroid/support/v7/preference/PreferenceCategory;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$0:Lcom/android/settings/applications/DirectoryAccessDetails;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$3:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$4:Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;

    iput-object p6, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$5:Landroid/support/v7/preference/PreferenceCategory;

    iput-object p7, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$6:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$0:Lcom/android/settings/applications/DirectoryAccessDetails;

    iget-object v1, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$3:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$4:Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;

    iget-object v5, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$5:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;->f$6:Ljava/util/Set;

    move-object v7, p1

    check-cast v7, Landroid/util/Pair;

    invoke-static/range {v0 .. v7}, Lcom/android/settings/applications/DirectoryAccessDetails;->lambda$refreshUi$0(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;Landroid/support/v7/preference/PreferenceCategory;Ljava/util/Set;Landroid/util/Pair;)V

    return-void
.end method
