.class public Lcom/android/settingslib/widget/FooterPreferenceMixin;
.super Ljava/lang/Object;
.source "FooterPreferenceMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;


# instance fields
.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private final mFragment:Landroid/support/v14/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 34
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 35
    return-void
.end method

.method private getPrefContext()Landroid/content/Context;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 49
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 52
    :cond_0
    new-instance v1, Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {p0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 54
    if-eqz v0, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    return-object v1
.end method

.method public hasFooter()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 39
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 42
    :cond_0
    return-void
.end method
