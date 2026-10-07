.class public Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;
.super Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;
.source "DefaultBrowserShortcutPreferenceController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "default_browser"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 28
    const-string v0, "default_browser"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected hasAppCapability()Z
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->hasBrowserPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isDefaultApp()Z
    .locals 3

    .line 38
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;->mPackageName:Ljava/lang/String;

    .line 39
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->isBrowserDefault(Ljava/lang/String;I)Z

    move-result v0

    .line 38
    return v0
.end method
