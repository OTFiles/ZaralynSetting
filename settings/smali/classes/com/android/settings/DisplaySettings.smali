.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DisplaySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mColorPaperLikeModePreferenceController:Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

.field private mHandler:Landroid/os/Handler;

.field private final mLateNightModeChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private mLateNightModePref:Landroid/support/v14/preference/SwitchPreference;

.field private mPortraitAppInvertedScreenPreferenceController:Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;

.field public mRbciManager:Ljava/lang/Object;

.field private mRunablePaperLikeMode:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRbciManager:Ljava/lang/Object;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRunablePaperLikeMode:Ljava/lang/Runnable;

    .line 233
    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mLateNightModeChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/display/ColorPaperLikeModePreferenceController;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .line 60
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mColorPaperLikeModePreferenceController:Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .line 60
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mRunablePaperLikeMode:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DisplaySettings;

    .line 60
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 60
    invoke-static {p0, p1}, Lcom/android/settings/DisplaySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/display/CameraGesturePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/CameraGesturePreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/display/CameraGesturePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/android/settings/display/LiftToWakePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/LiftToWakePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/display/LiftToWakePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lcom/android/settings/display/NightDisplayPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/NightDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Lcom/android/settings/display/NightModePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/NightModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;-><init>(Landroid/content/Context;)V

    .line 161
    .local v1, "tempPAppISPPref":Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v3, Lcom/android/settings/display/ScreenSaverPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/display/ScreenSaverPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/android/settings/display/ScreenSaverPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v3, Lcom/android/settings/display/AmbientDisplayPreferenceController;

    new-instance v4, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v4, p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    const-string v5, "ambient_display"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/display/AmbientDisplayPreferenceController;-><init>(Landroid/content/Context;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, v2}, Lcom/android/settings/display/AmbientDisplayPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    .line 163
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v3, Lcom/android/settings/display/TapToWakePreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/display/TapToWakePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/android/settings/display/TapToWakePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v3, Lcom/android/settings/display/TimeoutPreferenceController;

    const-string v4, "screen_timeout"

    invoke-direct {v3, p0, v4}, Lcom/android/settings/display/TimeoutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v3, Lcom/android/settings/display/VrDisplayPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/display/VrDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/android/settings/display/VrDisplayPreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v3, Lcom/android/settings/display/ShowOperatorNamePreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/display/ShowOperatorNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/android/settings/display/ShowOperatorNamePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v3, Lcom/android/settings/display/WallpaperPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/display/WallpaperPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v3, Lcom/android/settings/display/ThemePreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/display/ThemePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/android/settings/display/ThemePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v3, Lcom/android/settings/display/BrightnessLevelPreferenceController;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v3, Lcom/android/settings/display/ColorModePreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/display/ColorModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/android/settings/display/ColorModePreferenceController;->setIsAvailable(Z)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v2, Lcom/android/settings/AnyWantRemovedPreferenceController;

    const-string v3, "display_settings_screen_zoom"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/AnyWantRemovedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v2, Lcom/android/settings/AnyWantRemovedPreferenceController;

    const-string v3, "systemui_theme"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/AnyWantRemovedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v2, Lcom/android/settings/AnyWantRemovedPreferenceController;

    const-string v3, "font_size"

    invoke-direct {v2, p0, v3}, Lcom/android/settings/AnyWantRemovedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v2, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;-><init>(Landroid/content/Context;)V

    .line 178
    .local v2, "tempCPlikePref":Lcom/android/settings/display/ColorPaperLikeModePreferenceController;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-object v0
.end method

.method private updateLateNightMode()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mLateNightModePref:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mLateNightModePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "late_night_mode_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mLateNightModePref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mLateNightModeChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    :cond_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/DisplaySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "arrlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    const/4 v1, 0x0

    .local v1, "inum":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;

    if-eqz v2, :cond_0

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mPortraitAppInvertedScreenPreferenceController:Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;

    goto :goto_1

    .line 132
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    if-eqz v2, :cond_1

    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mColorPaperLikeModePreferenceController:Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    .line 129
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1
    :cond_2
    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 150
    const v0, 0x7f1206a2

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "DisplaySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 113
    const/16 v0, 0x2e

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 123
    const v0, 0x7f150050

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 219
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    const-string v1, "rbci"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mRbciManager:Ljava/lang/Object;

    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    goto :goto_1

    .line 221
    :catch_1
    move-exception v1

    goto :goto_0

    .line 220
    :catch_2
    move-exception v1

    .line 223
    :goto_0
    nop

    .line 224
    :goto_1
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRbciManager:Ljava/lang/Object;

    const-string v2, "RbciGetInfoByName"

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    const-string v5, "late_night_mode"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settings/SettingsExtraMoreSettings;->getCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 225
    .local v1, "result_str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    const-string v2, "late_night_mode"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mLateNightModePref:Landroid/support/v14/preference/SwitchPreference;

    .line 227
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateLateNightMode()V

    goto :goto_2

    .line 229
    :cond_0
    const-string v2, "late_night_mode"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->removePreference(Ljava/lang/String;)Z

    .line 231
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 104
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mColorPaperLikeModePreferenceController:Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mColorPaperLikeModePreferenceController:Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/display/ColorPaperLikeModePreferenceController;->releaseMyself()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mColorPaperLikeModePreferenceController:Lcom/android/settings/display/ColorPaperLikeModePreferenceController;

    .line 109
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroyView()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPortraitAppInvertedScreenPreferenceController:Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPortraitAppInvertedScreenPreferenceController:Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;->releaseController()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mPortraitAppInvertedScreenPreferenceController:Lcom/android/settings/display/PortraitAppInvertedScreenPreferenceController;

    .line 146
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRunablePaperLikeMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 97
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRunablePaperLikeMode:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRunablePaperLikeMode:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method
