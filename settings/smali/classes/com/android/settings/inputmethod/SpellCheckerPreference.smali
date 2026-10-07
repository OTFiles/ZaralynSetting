.class Lcom/android/settings/inputmethod/SpellCheckerPreference;
.super Lcom/android/settings/CustomListPreference;
.source "SpellCheckerPreference.java"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final mScis:[Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scis"    # [Landroid/view/textservice/SpellCheckerInfo;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 48
    const v0, 0x7f0d0154

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setWidgetLayoutResource(I)V

    .line 49
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 50
    .local v0, "labels":[Ljava/lang/CharSequence;
    array-length v1, p2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 51
    .local v1, "values":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 52
    aget-object v3, p2, v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    .line 54
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/inputmethod/SpellCheckerPreference;

    .line 40
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->onSettingsButtonClicked()V

    return-void
.end method

.method private onSettingsButtonClicked()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    .end local v1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 127
    :goto_0
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 100
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object p1, v0

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 107
    const v0, 0x7f0a03c3

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "settingsButton":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    new-instance v1, Lcom/android/settings/inputmethod/SpellCheckerPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 63
    const v0, 0x7f120397

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    return-void
.end method

.method public setSelected(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 3
    .param p1, "currentSci"    # Landroid/view/textservice/SpellCheckerInfo;

    .line 68
    if-nez p1, :cond_0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setValue(Ljava/lang/String;)V

    .line 70
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setValueIndex(I)V

    .line 75
    return-void

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0
    :cond_2
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->setValue(Ljava/lang/String;)V

    .line 83
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 84
    .local v1, "index":I
    :goto_0
    const/4 v2, 0x0

    if-ne v1, v0, :cond_1

    .line 85
    iput-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    .line 86
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v0, v0, v1

    .line 89
    .local v0, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "settingsActivity":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    iput-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 93
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckerPreference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :goto_1
    return-void
.end method
