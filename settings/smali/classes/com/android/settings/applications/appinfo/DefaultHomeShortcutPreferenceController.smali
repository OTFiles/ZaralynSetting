.class public Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;
.super Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;
.source "DefaultHomeShortcutPreferenceController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "default_home"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 28
    const-string v0, "default_home"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected hasAppCapability()Z
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->hasHomePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected isDefaultApp()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mPackageName:Ljava/lang/String;

    new-instance v1, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    .line 38
    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->isHomeDefault(Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)Z

    move-result v0

    return v0
.end method
