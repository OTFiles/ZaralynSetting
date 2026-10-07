.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final CATEGORIES:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;


# instance fields
.field private mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mAutoclickPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mCaptioningPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private final mCategoryToPrefCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFontSizePreferenceScreen:Landroid/support/v7/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValueToTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

.field private final mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v7/preference/Preference;",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mToggleDisableAnimationsPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 88
    const-string v0, "screen_reader_category"

    const-string v1, "audio_and_captions_category"

    const-string v2, "display_category"

    const-string v3, "interaction_control_category"

    const-string v4, "experimental_category"

    const-string v5, "user_installed_services_category"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    .line 147
    const-string v0, "window_animation_scale"

    const-string v1, "transition_animation_scale"

    const-string v2, "animator_duration_scale"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    .line 864
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$5;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 240
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 195
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 202
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    .line 204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 206
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    .line 243
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 244
    .local v0, "features":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v1, "shortcutFeatureKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 246
    .local v3, "feature":Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;
    invoke-virtual {v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v3
    goto :goto_0

    .line 248
    :cond_0
    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$4;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    return-void
.end method

.method private static configureMagnificationPreferenceIfNeeded(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p0, "preference"    # Landroid/support/v7/preference/Preference;

    .line 855
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 856
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isApplicable(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 857
    const-class v1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 859
    .local v1, "extras":Landroid/os/Bundle;
    nop

    .line 860
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 862
    .end local v1
    :cond_0
    return-void
.end method

.method public static getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p2, "serviceEnabled"    # Z

    .line 349
    if-eqz p2, :cond_0

    .line 350
    const v0, 0x7f12007b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_0
    const v0, 0x7f12007a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "serviceState":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 353
    .local v1, "serviceSummary":Ljava/lang/CharSequence;
    const v2, 0x7f120a2b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "stateSummaryCombo":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    nop

    .line 357
    move-object v3, v0

    goto :goto_1

    .line 359
    :cond_1
    nop

    .line 357
    move-object v3, v2

    :goto_1
    return-object v3
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 378
    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 377
    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 379
    return-void
.end method

.method private handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "stringValue"    # Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    .line 313
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 312
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    .line 315
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 314
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    return-void
.end method

.method private handleToggleDisableAnimations()V
    .locals 6

    .line 388
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 390
    .local v0, "newAnimationValue":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 391
    .local v4, "animationPreference":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    .end local v4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 393
    :cond_1
    return-void
.end method

.method private handleToggleInversionPreferenceChange(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    .line 320
    nop

    .line 319
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    return-void
.end method

.method private handleToggleLargePointerIconPreferenceClick()V
    .locals 3

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_large_pointer_icon"

    .line 384
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 382
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 385
    return-void
.end method

.method private handleToggleMasterMonoPreferenceClick()V
    .locals 4

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_mono"

    .line 397
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    const/4 v3, -0x2

    .line 396
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 398
    return-void
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    .line 371
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    const/4 v2, 0x2

    goto :goto_0

    .line 373
    :cond_0
    const/4 v2, 0x1

    .line 369
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    return-void
.end method

.method private handleToggleTextContrastPreferenceClick()V
    .locals 3

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_text_contrast_enabled"

    .line 365
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 363
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    return-void
.end method

.method private initializeAllPreferences()V
    .locals 7

    .line 401
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 402
    sget-object v2, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    .line 403
    .local v2, "prefCategory":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v1
    :cond_0
    const-string v1, "toggle_high_text_contrast_preference"

    .line 408
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 411
    const-string v1, "toggle_inversion_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 412
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 415
    const-string v1, "toggle_power_button_ends_call_preference"

    .line 416
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 417
    const/16 v1, 0x1a

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v2, "interaction_control_category"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 420
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 424
    :cond_2
    const-string v1, "toggle_lock_screen_rotation_preference"

    .line 425
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 427
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v2, "interaction_control_category"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 428
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 432
    :cond_3
    const-string v1, "toggle_large_pointer_icon"

    .line 433
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 435
    const-string v1, "toggle_disable_animations"

    .line 436
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 439
    const-string v1, "toggle_master_mono"

    .line 440
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 443
    const-string v1, "select_long_press_timeout_preference"

    .line 444
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    .line 445
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 446
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "timeoutValues":[Ljava/lang/String;
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "timeoutTitles":[Ljava/lang/String;
    array-length v3, v1

    .line 453
    .local v3, "timeoutValueCount":I
    nop

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_4

    .line 454
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    aget-object v5, v1, v0

    aget-object v6, v2, v0

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 459
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_4
    const-string v0, "captioning_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 462
    const-string v0, "magnification_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 464
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->configureMagnificationPreferenceIfNeeded(Landroid/support/v7/preference/Preference;)V

    .line 467
    const-string v0, "font_size_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 470
    const-string v0, "autoclick_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 473
    const-string v0, "daltonizer_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 476
    const-string v0, "accessibility_shortcut_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 479
    const-string v0, "vibration_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 480
    return-void
.end method

.method private initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V
    .locals 5
    .param p1, "categoryKey"    # Ljava/lang/String;
    .param p2, "key"    # I

    .line 621
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "services":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    .line 623
    .local v1, "category":Landroid/support/v7/preference/PreferenceCategory;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 624
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 625
    .local v3, "component":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .end local v3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .end local v2
    :cond_0
    return-void
.end method

.method public static isColorTransformAccelerated(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    const v1, 0x112009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 236
    return v0
.end method

.method private updateAccessibilityShortcut(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 835
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120063

    .line 838
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 842
    nop

    .line 843
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->isShortcutEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 844
    .local v0, "shortcutEnabled":Z
    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 846
    :cond_1
    const v1, 0x7f120054

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "summary":Ljava/lang/CharSequence;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 849
    .end local v0
    .end local v1
    :goto_1
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicePreferences()V

    .line 485
    return-void
.end method

.method private updateAutoclickSummary(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .line 727
    nop

    .line 728
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_enabled"

    .line 727
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 729
    .local v0, "enabled":Z
    if-nez v0, :cond_1

    .line 730
    const v1, 0x7f120054

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 731
    return-void

    .line 733
    :cond_1
    nop

    .line 734
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_autoclick_delay"

    const/16 v3, 0x258

    .line 733
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 736
    .local v1, "delay":I
    nop

    .line 737
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 736
    invoke-static {v2, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 738
    return-void
.end method

.method private updateDisableAnimationsToggle()V
    .locals 7

    .line 815
    const/4 v0, 0x1

    .line 816
    .local v0, "allAnimationsDisabled":Z
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 817
    .local v4, "animationSetting":Ljava/lang/String;
    nop

    .line 818
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    .line 817
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 820
    const/4 v0, 0x0

    .line 821
    goto :goto_1

    .line 816
    .end local v4
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 824
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 825
    return-void
.end method

.method private updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    move v0, v1

    .line 722
    .local v0, "enabled":Z
    if-eqz v0, :cond_1

    const v1, 0x7f120055

    goto :goto_0

    .line 723
    :cond_1
    const v1, 0x7f120054

    .line 722
    :goto_0
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 724
    return-void
.end method

.method private updateFontSizeSummary(Landroid/support/v7/preference/Preference;)V
    .locals 6
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 743
    .local v0, "currentScale":F
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 744
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f030050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, "entries":[Ljava/lang/String;
    const v3, 0x7f030051

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 746
    .local v3, "strEntryValues":[Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v4

    .line 748
    .local v4, "index":I
    aget-object v5, v2, v4

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 749
    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .line 807
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 808
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 810
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v2

    .line 809
    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 812
    :cond_0
    return-void
.end method

.method private updateMagnificationSummary(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .line 702
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 704
    .local v0, "tripleTapEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 707
    .local v1, "buttonEnabled":Z
    :goto_1
    const/4 v2, 0x0

    .line 708
    .local v2, "summaryResId":I
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 709
    const v2, 0x7f120054

    goto :goto_2

    .line 710
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 711
    const v2, 0x7f12006d

    goto :goto_2

    .line 712
    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 713
    const v2, 0x7f120069

    goto :goto_2

    .line 715
    :cond_4
    const v2, 0x7f12006f

    .line 717
    :goto_2
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 718
    return-void
.end method

.method private updateMasterMono()V
    .locals 4

    .line 828
    nop

    .line 829
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_mono"

    .line 828
    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 831
    .local v0, "masterMono":Z
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 832
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 263
    const v0, 0x7f12069d

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 258
    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 268
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 269
    const v0, 0x7f150005

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 270
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    .line 272
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 273
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 291
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 296
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 297
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 302
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V

    .line 303
    return v1

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    .line 305
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleInversionPreferenceChange(Z)V

    .line 306
    return v1

    .line 308
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 325
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleTextContrastPreferenceClick()V

    .line 327
    return v1

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    .line 329
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    .line 330
    return v1

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_2

    .line 332
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    .line 333
    return v1

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_3

    .line 335
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleLargePointerIconPreferenceClick()V

    .line 336
    return v1

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_4

    .line 338
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleDisableAnimations()V

    .line 339
    return v1

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_5

    .line 341
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleMasterMonoPreferenceClick()V

    .line 342
    return v1

    .line 344
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 277
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 278
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 286
    :cond_0
    return-void
.end method

.method protected updateServicePreferences()V
    .locals 28

    .line 493
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 494
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 495
    .local v1, "servicePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/preference/Preference;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 496
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    .line 497
    .local v4, "service":Landroid/support/v7/preference/Preference;
    iget-object v5, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceCategory;

    .line 498
    .local v5, "category":Landroid/support/v7/preference/PreferenceCategory;
    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 495
    .end local v4
    .end local v5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 501
    .end local v3
    :cond_0
    const-string v3, "screen_reader_category"

    const v4, 0x7f030042

    invoke-direct {v0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 503
    const-string v3, "audio_and_captions_category"

    const v4, 0x7f03003f

    invoke-direct {v0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 505
    const-string v3, "display_category"

    const v4, 0x7f030040

    invoke-direct {v0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 507
    const-string v3, "interaction_control_category"

    const v4, 0x7f030041

    invoke-direct {v0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    .line 512
    .local v3, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 513
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v4

    .line 514
    .local v4, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    nop

    .line 515
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v6

    .line 516
    .local v6, "enabledServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    nop

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 516
    invoke-static {v7}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 518
    .local v7, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v8, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 519
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 518
    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v8

    .line 521
    .local v8, "permittedServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v10, "user_installed_services_category"

    .line 522
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/PreferenceCategory;

    .line 524
    .local v9, "downloadedServicesCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string v10, "user_installed_services_category"

    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_1

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 528
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "count":I
    :goto_1
    if-ge v10, v11, :cond_c

    .line 529
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 530
    .local v12, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    .line 532
    .local v13, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v14, Lcom/android/settingslib/RestrictedPreference;

    .line 533
    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 534
    .local v14, "preference":Lcom/android/settingslib/RestrictedPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 537
    .local v15, "title":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v16

    if-nez v16, :cond_2

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v2, 0x7f0f0000

    invoke-static {v5, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 540
    .end local v2
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 543
    .restart local v2
    :goto_2
    iget-object v5, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 544
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    move-object/from16 v17, v1

    iget-object v1, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 545
    .local v1, "packageName":Ljava/lang/String;
    .local v17, "servicePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/preference/Preference;>;"
    move-object/from16 v18, v3

    new-instance v3, Landroid/content/ComponentName;

    .end local v3
    .local v18, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    move-object/from16 v19, v4

    iget-object v4, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .end local v4
    .local v19, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v14, v15}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 550
    invoke-static {v14, v2}, Lcom/android/settings/Utils;->setSafeIcon(Landroid/support/v7/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    .line 551
    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 552
    .local v4, "serviceEnabled":Z
    move-object/from16 v20, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .end local v2
    .local v20, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "description":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 554
    move-object/from16 v21, v2

    const v2, 0x7f120072

    .end local v2
    .local v21, "description":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v21
    .restart local v2
    goto :goto_3

    .line 557
    :cond_3
    move-object/from16 v21, v2

    :goto_3
    if-eqz v4, :cond_4

    move-object/from16 v22, v2

    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .end local v2
    .local v22, "description":Ljava/lang/String;
    invoke-static {v1, v2, v6}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->hasServiceCrashed(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 560
    const v2, 0x7f12007c

    invoke-virtual {v14, v2}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 561
    const v2, 0x7f12004e

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v22
    .restart local v2
    goto :goto_4

    .line 563
    :cond_4
    move-object/from16 v22, v2

    .end local v2
    .restart local v22
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v12, v4}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 565
    .local v2, "serviceSummary":Ljava/lang/CharSequence;
    invoke-virtual {v14, v2}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    .end local v2
    move-object/from16 v2, v22

    .end local v22
    .local v2, "description":Ljava/lang/String;
    :goto_4
    move-object/from16 v23, v5

    .end local v5
    .local v23, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v8, :cond_7

    .line 570
    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/16 v16, 0x1

    .line 571
    .local v16, "serviceAllowed":Z
    :goto_6
    if-nez v16, :cond_9

    if-nez v4, :cond_9

    .line 572
    nop

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v24, v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 573
    .end local v6
    .local v24, "enabledServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {v5, v1, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 575
    .local v5, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v5, :cond_8

    .line 576
    invoke-virtual {v14, v5}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 580
    const/4 v6, 0x0

    goto :goto_7

    .line 578
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 580
    .end local v5
    :goto_7
    nop

    .line 584
    const/4 v5, 0x1

    goto :goto_8

    .line 581
    .end local v24
    .restart local v6
    :cond_9
    move-object/from16 v24, v6

    const/4 v6, 0x0

    .end local v6
    .restart local v24
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 584
    :goto_8
    const-class v6, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/android/settingslib/RestrictedPreference;->setFragment(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v14, v5}, Lcom/android/settingslib/RestrictedPreference;->setPersistent(Z)V

    .line 587
    invoke-virtual {v14}, Lcom/android/settingslib/RestrictedPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 588
    .local v5, "extras":Landroid/os/Bundle;
    const-string v6, "preference_key"

    move-object/from16 v25, v7

    invoke-virtual {v14}, Lcom/android/settingslib/RestrictedPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    .end local v7
    .local v25, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v6, "checked"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 590
    const-string v6, "title"

    invoke-virtual {v5, v6, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v6, "resolve_info"

    invoke-virtual {v5, v6, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 592
    const-string v6, "summary"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v6

    .line 595
    .local v6, "settingsClassName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 596
    const-string v7, "settings_title"

    move-object/from16 v26, v2

    const v2, 0x7f120061

    .line 597
    .end local v2
    .local v26, "description":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-virtual {v5, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v2, "settings_component_name"

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v1, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 598
    invoke-virtual {v5, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 601
    .end local v26
    .restart local v2
    :cond_a
    move-object/from16 v26, v2

    .end local v2
    .restart local v26
    :goto_9
    const-string v2, "component_name"

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 603
    move-object v2, v9

    .line 605
    .local v2, "prefCategory":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v7, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 606
    iget-object v7, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    .line 608
    :cond_b
    const/4 v7, -0x1

    invoke-virtual {v14, v7}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 609
    invoke-virtual {v2, v14}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 610
    iget-object v7, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v7, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    .end local v12
    .end local v13
    .end local v14
    .end local v15
    .end local v16
    .end local v20
    .end local v23
    .end local v26
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v6, v24

    move-object/from16 v7, v25

    const/4 v5, -0x1

    goto/16 :goto_1

    .line 614
    .end local v10
    .end local v11
    .end local v17
    .end local v18
    .end local v19
    .end local v24
    .end local v25
    .local v1, "servicePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/preference/Preference;>;"
    .local v3, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .local v4, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .local v6, "enabledServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v7
    :cond_c
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    .end local v1
    .end local v3
    .end local v4
    .end local v6
    .end local v7
    .restart local v17
    .restart local v18
    .restart local v19
    .restart local v24
    .restart local v25
    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_d

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 616
    .local v1, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v1, v9}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 618
    .end local v1
    :cond_d
    return-void
.end method

.method protected updateSystemPreferences()V
    .locals 5

    .line 632
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v1, "experimental_category"

    .line 634
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 635
    .local v0, "experimentalCategory":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v2, "display_category"

    .line 636
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    .line 637
    .local v1, "displayCategory":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 638
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 639
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    .line 640
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 641
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    const v3, 0x7f120e32

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 642
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 643
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 647
    .end local v0
    .end local v1
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_text_contrast_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 647
    move v1, v2

    goto :goto_0

    .line 648
    :cond_1
    nop

    .line 647
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 656
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 658
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 661
    .local v0, "incallPowerBehavior":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    .line 663
    .local v1, "powerButtonEndsCall":Z
    :goto_2
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 667
    .end local v0
    .end local v1
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 670
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_large_pointer_icon"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 673
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateDisableAnimationsToggle()V

    .line 676
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateMasterMono()V

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    iget v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 681
    .local v0, "longPressTimeout":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 683
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateVibrationSummary(Landroid/support/v7/preference/Preference;)V

    .line 687
    const-string v2, "accessibility_captioning_enabled"

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 689
    const-string v2, "accessibility_display_daltonizer_enabled"

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 692
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateMagnificationSummary(Landroid/support/v7/preference/Preference;)V

    .line 694
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFontSizeSummary(Landroid/support/v7/preference/Preference;)V

    .line 696
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAutoclickSummary(Landroid/support/v7/preference/Preference;)V

    .line 698
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAccessibilityShortcut(Landroid/support/v7/preference/Preference;)V

    .line 699
    return-void
.end method

.method updateVibrationSummary(Landroid/support/v7/preference/Preference;)V
    .locals 10
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 754
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 756
    .local v1, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_vibration_intensity"

    .line 758
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v4

    .line 756
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 759
    .local v2, "ringIntensity":I
    nop

    .line 760
    invoke-static {v0, v2}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 762
    .local v3, "ringIntensityString":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "haptic_feedback_intensity"

    .line 764
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v6

    .line 762
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 765
    .local v4, "touchIntensity":I
    nop

    .line 766
    invoke-static {v0, v4}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 768
    .local v5, "touchIntensityString":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    if-nez v6, :cond_0

    .line 769
    const-string v6, "vibration_preference_screen"

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 772
    :cond_0
    if-ne v2, v4, :cond_1

    .line 773
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 775
    :cond_1
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    const v7, 0x7f12008d

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    .line 776
    invoke-virtual {p0, v7, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 775
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 779
    :goto_0
    return-void
.end method
