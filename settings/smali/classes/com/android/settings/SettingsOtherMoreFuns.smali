.class public Lcom/android/settings/SettingsOtherMoreFuns;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SettingsOtherMoreFuns.java"


# instance fields
.field private mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

.field mPrefOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private riseAndFallCameraAdjustPref:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 94
    new-instance v0, Lcom/android/settings/SettingsOtherMoreFuns$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsOtherMoreFuns$1;-><init>(Lcom/android/settings/SettingsOtherMoreFuns;)V

    iput-object v0, p0, Lcom/android/settings/SettingsOtherMoreFuns;->mPrefOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsOtherMoreFuns;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsOtherMoreFuns;

    .line 51
    iget-object v0, p0, Lcom/android/settings/SettingsOtherMoreFuns;->riseAndFallCameraAdjustPref:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsOtherMoreFuns;)Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsOtherMoreFuns;

    .line 51
    iget-object v0, p0, Lcom/android/settings/SettingsOtherMoreFuns;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    return-object v0
.end method

.method public static isOtherMoreSettingsVisiableStatus()Z
    .locals 9

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "iDislayItemNumber":I
    const-string v1, "ro.readboy.front.camera.type"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "canmeraStyle":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "riseandfall"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 82
    .local v2, "isRiseandFallCamera":Z
    :goto_0
    const-string v5, "ro.readboy.flip.calibrate"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 83
    .local v5, "flipcameraType":I
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "====divhee=======================flipcameraType===="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz v2, :cond_2

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 91
    :cond_2
    :goto_1
    if-lez v0, :cond_3

    move v3, v4

    nop

    :cond_3
    return v3
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 137
    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f15007b

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsOtherMoreFuns;->addPreferencesFromResource(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/SettingsOtherMoreFuns;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-direct {v1, v0, v0}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/SettingsOtherMoreFuns;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    .line 68
    iget-object v1, p0, Lcom/android/settings/SettingsOtherMoreFuns;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsOtherMoreFuns;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsOtherMoreFuns;->riseAndFallCameraAdjustPref:Landroid/support/v7/preference/Preference;

    .line 69
    iget-object v1, p0, Lcom/android/settings/SettingsOtherMoreFuns;->riseAndFallCameraAdjustPref:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/SettingsOtherMoreFuns;->mPrefOnClickListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/SettingsOtherMoreFuns;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/SettingsOtherMoreFuns;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->releaseController()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsOtherMoreFuns;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    .line 133
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/android/settings/SettingsOtherMoreFuns;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsOtherMoreFuns;->riseAndFallCameraAdjustPref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/SettingsOtherMoreFuns;->mDevelopmentRiseAndFallCameraAdjustPreferenceController:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v1, p0, Lcom/android/settings/SettingsOtherMoreFuns;->riseAndFallCameraAdjustPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 117
    :cond_0
    return-void
.end method
