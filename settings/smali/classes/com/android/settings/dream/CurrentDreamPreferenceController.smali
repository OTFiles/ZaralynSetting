.class public Lcom/android/settings/dream/CurrentDreamPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "CurrentDreamPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mBackend:Lcom/android/settingslib/dream/DreamBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    .line 37
    return-void
.end method

.method private getActiveDreamInfo()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$JJd0D4Ql1FstWgOpYrMCLEB2pnU;->INSTANCE:Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$JJd0D4Ql1FstWgOpYrMCLEB2pnU;

    .line 78
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 76
    return-object v0
.end method

.method static synthetic lambda$getActiveDreamInfo$1(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z
    .locals 1
    .param p0, "info"    # Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 78
    iget-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    return v0
.end method

.method public static synthetic lambda$setGearClickListenerForPreference$0(Lcom/android/settings/dream/CurrentDreamPreferenceController;Lcom/android/settings/widget/GearPreference;)V
    .locals 0
    .param p1, "gearPref"    # Lcom/android/settings/widget/GearPreference;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->launchScreenSaverSettings()V

    return-void
.end method

.method private launchScreenSaverSettings()V
    .locals 4

    .line 70
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->getActiveDreamInfo()Ljava/util/Optional;

    move-result-object v0

    .line 71
    .local v0, "info":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/settingslib/dream/DreamBackend$DreamInfo;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    iget-object v2, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/dream/DreamBackend;->launchSettings(Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    .line 73
    return-void
.end method

.method private setGearClickListenerForPreference(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 58
    instance-of v0, p1, Lcom/android/settings/widget/GearPreference;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    .line 61
    .local v0, "gearPreference":Lcom/android/settings/widget/GearPreference;
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->getActiveDreamInfo()Ljava/util/Optional;

    move-result-object v1

    .line 62
    .local v1, "info":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/settingslib/dream/DreamBackend$DreamInfo;>;"
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v2, v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez v2, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    new-instance v2, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$faOOwvjkeM0i38i1bxACLza6vQ4;

    invoke-direct {v2, p0}, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$faOOwvjkeM0i38i1bxACLza6vQ4;-><init>(Lcom/android/settings/dream/CurrentDreamPreferenceController;)V

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 67
    return-void

    .line 63
    :cond_2
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "current_screensaver"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->setGearClickListenerForPreference(Landroid/support/v7/preference/Preference;)V

    .line 55
    return-void
.end method
