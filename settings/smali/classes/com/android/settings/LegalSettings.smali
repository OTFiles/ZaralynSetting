.class public Lcom/android/settings/LegalSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LegalSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field static final KEY_WALLPAPER_ATTRIBUTIONS:Ljava/lang/String; = "wallpaper_attributions"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/android/settings/LegalSettings$1;

    invoke-direct {v0}, Lcom/android/settings/LegalSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/LegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method checkWallpaperAttributionAvailability(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "wallpaper_attributions"

    invoke-virtual {p0, v0}, Lcom/android/settings/LegalSettings;->removePreference(Ljava/lang/String;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 67
    const/16 v0, 0xe1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/high16 v0, 0x7f150000

    invoke-virtual {p0, v0}, Lcom/android/settings/LegalSettings;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 52
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 53
    .local v1, "parentPreference":Landroid/support/v7/preference/PreferenceGroup;
    const-string v2, "terms"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 55
    const-string v2, "license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 57
    const-string v2, "copyright"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 59
    const-string v2, "webview_license"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settings/LegalSettings;->checkWallpaperAttributionAvailability(Landroid/content/Context;)V

    .line 63
    return-void
.end method
