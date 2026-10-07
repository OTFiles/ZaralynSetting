.class public Lcom/android/settings/widget/ValidatedEditTextPreference;
.super Lcom/android/settingslib/CustomEditTextPreference;
.source "ValidatedEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;,
        Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;
    }
.end annotation


# instance fields
.field private mIsPassword:Z

.field private mIsSummaryPassword:Z

.field private final mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

.field private mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance v0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V

    iput-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 38
    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    return-object v0
.end method


# virtual methods
.method public isPassword()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsPassword:Z

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 69
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 70
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 74
    iget-object v1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    iget-boolean v1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsPassword:Z

    if-eqz v1, :cond_1

    .line 76
    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mTextWatcher:Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    :cond_2
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 86
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 88
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    .local v0, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsSummaryPassword:Z

    if-eqz v1, :cond_1

    .line 93
    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    .line 96
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 98
    :goto_0
    return-void
.end method

.method public setIsPassword(Z)V
    .locals 0
    .param p1, "isPassword"    # Z

    .line 101
    iput-boolean p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsPassword:Z

    .line 102
    return-void
.end method

.method public setIsSummaryPassword(Z)V
    .locals 0
    .param p1, "isPassword"    # Z

    .line 105
    iput-boolean p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mIsSummaryPassword:Z

    .line 106
    return-void
.end method

.method public setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V
    .locals 0
    .param p1, "validator"    # Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    .line 114
    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference;->mValidator:Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    .line 115
    return-void
.end method
