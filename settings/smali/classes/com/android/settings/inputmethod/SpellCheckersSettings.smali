.class public Lcom/android/settings/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 42
    invoke-static {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->convertDialogItemIdToSubtypeIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .line 42
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/inputmethod/SpellCheckersSettings;
    .param p1, "x1"    # Landroid/view/textservice/SpellCheckerInfo;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method

.method private changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 3
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "selected_spell_checker"

    .line 268
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "selected_spell_checker_subtype"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 276
    return-void
.end method

.method private static convertDialogItemIdToSubtypeIndex(I)I
    .locals 1
    .param p0, "item"    # I

    .line 185
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method private static convertSubtypeIndexToDialogItemId(I)I
    .locals 1
    .param p0, "index"    # I

    .line 181
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "subtype"    # Landroid/view/textservice/SpellCheckerSubtype;

    .line 147
    if-nez p1, :cond_0

    .line 148
    const v0, 0x7f120d70

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    if-nez p2, :cond_1

    .line 151
    const v0, 0x7f120f7b

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_1
    nop

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 153
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private populatePreferenceScreen()V
    .locals 3

    .line 78
    new-instance v0, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;-><init>(Landroid/content/Context;[Landroid/view/textservice/SpellCheckerInfo;)V

    .line 80
    .local v0, "pref":Lcom/android/settings/inputmethod/SpellCheckerPreference;
    const v1, 0x7f1204fa

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setTitle(I)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v1, v1

    .line 82
    .local v1, "count":I
    :goto_0
    if-lez v1, :cond_1

    .line 83
    const-string v2, "%s"

    invoke-virtual {v0, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 85
    :cond_1
    const v2, 0x7f120d70

    invoke-virtual {v0, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSummary(I)V

    .line 87
    :goto_1
    const-string v2, "default_spellchecker"

    invoke-virtual {v0, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setKey(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 90
    return-void
.end method

.method private showChooseLanguageDialog()V
    .locals 10

    .line 189
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 193
    .local v0, "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v0, :cond_1

    .line 196
    return-void

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 200
    .local v1, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f1209e2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v4

    .line 203
    .local v4, "subtypeCount":I
    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 204
    .local v5, "items":[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    .line 205
    const/4 v6, 0x0

    .line 206
    .local v6, "checkedItemId":I
    nop

    .local v2, "index":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 207
    invoke-virtual {v0, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 208
    .local v7, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-static {v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->convertSubtypeIndexToDialogItemId(I)I

    move-result v8

    .line 209
    .local v8, "itemId":I
    invoke-direct {p0, v0, v7}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v5, v8

    .line 210
    invoke-virtual {v7, v1}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 211
    move v6, v8

    .line 206
    .end local v7
    .end local v8
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2
    :cond_3
    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v3, v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 239
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 240
    return-void
.end method

.method private showSecurityWarnDialog(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 6
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    .line 243
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 246
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 248
    const v1, 0x7f120d73

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 248
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 251
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 262
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 263
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 264
    return-void
.end method

.method private updatePreferenceScreen()V
    .locals 9

    .line 119
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 120
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    .line 121
    .local v0, "isSpellCheckerEnabled":Z
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .local v1, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    goto :goto_0

    .line 128
    .end local v1
    :cond_0
    const/4 v1, 0x0

    .line 130
    .restart local v1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0, v4, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 133
    .local v3, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 134
    .local v4, "count":I
    move v5, v2

    .local v5, "index":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 135
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 136
    .local v6, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 137
    instance-of v7, v6, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    if-eqz v7, :cond_1

    .line 138
    move-object v7, v6

    check-cast v7, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    .line 139
    .local v7, "pref":Lcom/android/settings/inputmethod/SpellCheckerPreference;
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v7, v8}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSelected(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 134
    .end local v6
    .end local v7
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 142
    .end local v5
    :cond_2
    iget-object v5, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    nop

    :cond_3
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 143
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 60
    const/16 v0, 0x3b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f1500a4

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->addPreferencesFromResource(I)V

    .line 68
    const-string v0, "spellchecker_language"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    .line 69
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    const-string v0, "textservices"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 72
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 73
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->populatePreferenceScreen()V

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->hide(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 168
    move-object v0, p2

    check-cast v0, Landroid/view/textservice/SpellCheckerInfo;

    .line 169
    .local v0, "sci":Landroid/view/textservice/SpellCheckerInfo;
    nop

    .line 170
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 171
    .local v1, "isSystemApp":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 172
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 173
    return v2

    .line 175
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 176
    return v3
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .line 159
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->showChooseLanguageDialog()V

    .line 161
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar(Ljava/lang/String;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 96
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v1, 0x7f120d6f

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->setTextTitleById(II)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120d74

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SwitchBar;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 102
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spell_checker_enabled"

    .line 114
    nop

    .line 113
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 116
    return-void
.end method
