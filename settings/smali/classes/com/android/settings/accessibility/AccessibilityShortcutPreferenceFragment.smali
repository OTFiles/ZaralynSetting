.class public Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "AccessibilityShortcutPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mServicePreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$2;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;

    .line 43
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updatePreferences()V

    return-void
.end method

.method private static getServiceInfo(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 171
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 172
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public static getServiceName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 159
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->shortcutFeatureAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const v0, 0x7f120062

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceInfo(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 163
    .local v0, "shortcutServiceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 166
    :cond_1
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v1

    .line 167
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    invoke-virtual {v1, p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 166
    return-object v1
.end method

.method private static getShortcutComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 187
    nop

    .line 188
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 187
    invoke-static {p0, v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getShortcutTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "componentNameString":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 190
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "p"    # Landroid/support/v7/preference/Preference;
    .param p2, "o"    # Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_on_lock_screen"

    .line 77
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 75
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$onInstallSwitchBarToggleSwitch$1(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "enabled"    # Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    .local v0, "context":Landroid/content/Context;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->shortcutFeatureAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    nop

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_enabled"

    .line 112
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->performClick()V

    goto :goto_0

    .line 117
    :cond_0
    const-string v1, "accessibility_shortcut_enabled"

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 119
    :goto_0
    return-void
.end method

.method private static shortcutFeatureAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 176
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 177
    .local v0, "shortcutFeature":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 179
    :cond_0
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v2

    .line 180
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 181
    return v3

    .line 183
    :cond_1
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceInfo(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    move v1, v3

    nop

    :cond_2
    return v1
.end method

.method private updatePreferences()V
    .locals 7

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->shortcutFeatureAvailable(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_shortcut_enabled"

    .line 134
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    :cond_0
    const-string v2, "accessibility_shortcut_enabled"

    .line 138
    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 139
    .local v2, "isEnabled":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 142
    const-string v5, "accessibility_shortcut_dialog_shown"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 144
    .local v5, "dialogShown":I
    const-string v6, "accessibility_shortcut_on_lock_screen"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v3, v4

    nop

    .line 146
    .local v3, "enabledFromLockScreen":Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 148
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v6}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 149
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v6}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 150
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 65
    const v0, 0x7f1206b1

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 60
    const/4 v0, 0x6

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 101
    const v0, 0x7f150008

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "accessibility_shortcut_service"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    .line 73
    const-string v0, "accessibility_shortcut_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$v5UnURHl-V2dl7gTZw_kdUDDZ6E;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$v5UnURHl-V2dl7gTZw_kdUDDZ6E;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    .line 81
    const v1, 0x7f120077

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 82
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$B1JGpZUcoOdF9ofKXLGiPDgZ6Bo;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$B1JGpZUcoOdF9ofKXLGiPDgZ6Bo;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 120
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    .line 97
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updatePreferences()V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 86
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updatePreferences()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    .line 89
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 88
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    return-void
.end method
