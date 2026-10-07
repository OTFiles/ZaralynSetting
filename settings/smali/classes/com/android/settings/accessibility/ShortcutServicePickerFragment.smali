.class public Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ShortcutServicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;,
        Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;,
        Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->onServiceConfirmed(Ljava/lang/String;)V

    return-void
.end method

.method private onServiceConfirmed(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceKey"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 76
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 77
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 80
    .local v3, "numInstalledServices":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v4, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/widget/CandidateInfo;>;"
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v5

    .line 83
    .local v5, "frameworkFeatureInfoMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 85
    .local v7, "componentName":Landroid/content/ComponentName;
    sget-object v8, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 86
    const v8, 0x7f080154

    .local v8, "iconId":I
    :goto_1
    goto :goto_2

    .line 87
    .end local v8
    :cond_0
    sget-object v8, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 88
    const v8, 0x7f080155

    goto :goto_1

    .line 90
    :cond_1
    const v8, 0x7f0800f6

    .line 92
    .restart local v8
    :goto_2
    new-instance v9, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 93
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, p0, v10, v8, v11}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;-><init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;ILjava/lang/String;)V

    .line 92
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v7
    .end local v8
    goto :goto_0

    .line 95
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v3, :cond_3

    .line 96
    new-instance v7, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v7, p0, v8}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;-><init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 99
    .end local v6
    :cond_3
    return-object v4
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 3

    .line 104
    nop

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getShortcutTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "shortcutServiceString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 108
    .local v1, "shortcutName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 112
    .end local v1
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 63
    const/4 v0, 0x6

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 68
    const v0, 0x7f150007

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 6
    .param p1, "selected"    # Lcom/android/settings/widget/RadioButtonPreference;

    .line 124
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "selectedKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 130
    .local v1, "selectedComponent":Landroid/content/ComponentName;
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v2

    .line 131
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 136
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_2

    .line 137
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->newInstance(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;

    move-result-object v3

    .line 138
    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "ConfirmationDialogFragment"

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 142
    .end local v1
    .end local v2
    :cond_2
    :goto_0
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_target_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    const/4 v0, 0x1

    return v0
.end method
