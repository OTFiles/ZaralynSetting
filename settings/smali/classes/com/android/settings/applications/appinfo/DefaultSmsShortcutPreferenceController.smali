.class public Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;
.super Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;
.source "DefaultSmsShortcutPreferenceController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "default_sms_app"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 27
    const-string v0, "default_sms_app"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected hasAppCapability()Z
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->hasSmsPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isDefaultApp()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
