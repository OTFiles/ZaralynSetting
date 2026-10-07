.class public Lcom/android/settingslib/CustomEditTextPreference;
.super Landroid/support/v7/preference/EditTextPreference;
.source "CustomEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0, p1}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/CustomEditTextPreference;Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/CustomEditTextPreference;
    .param p1, "x1"    # Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->setFragment(Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;)V

    return-void
.end method

.method private setFragment(Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    .line 92
    iput-object p1, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    .line 93
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 57
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 58
    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    return-object v1

    .line 61
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDialogOpen()Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 84
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 85
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 86
    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 87
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 89
    :cond_0
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 80
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .line 77
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 74
    return-void
.end method
