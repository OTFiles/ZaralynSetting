.class public Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "VirtualKeyboardPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 44
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 45
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 46
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "virtual_keyboard_pref"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 13
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 60
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const v1, 0x7f120e32

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 63
    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v2

    .line 67
    .local v2, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v3, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 70
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    nop

    .line 72
    .local v6, "isAllowedByOrganization":Z
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    .line 73
    goto :goto_0

    .line 75
    :cond_3
    iget-object v7, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v5
    .end local v6
    goto :goto_0

    .line 77
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 78
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 79
    return-void

    .line 82
    :cond_5
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 84
    .local v1, "bidiFormatter":Landroid/text/BidiFormatter;
    const/4 v4, 0x0

    .line 85
    .local v4, "summary":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 86
    .local v8, "label":Ljava/lang/String;
    if-nez v4, :cond_6

    .line 87
    invoke-virtual {v1, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 89
    :cond_6
    iget-object v9, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mContext:Landroid/content/Context;

    const v10, 0x7f120730

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v7

    .line 90
    invoke-virtual {v1, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 89
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .end local v8
    :goto_3
    goto :goto_2

    .line 93
    :cond_7
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
