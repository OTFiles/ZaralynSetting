.class Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;
.super Ljava/lang/Object;
.source "ValidatedEditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ValidatedEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/ValidatedEditTextPreference;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/widget/ValidatedEditTextPreference;
    .param p2, "x1"    # Lcom/android/settings/widget/ValidatedEditTextPreference$1;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 129
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-static {v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->access$100(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 131
    .local v1, "dialog":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-static {v2}, Lcom/android/settings/widget/ValidatedEditTextPreference;->access$100(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;->isTextValid(Ljava/lang/String;)Z

    move-result v2

    .line 132
    .local v2, "valid":Z
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    .end local v1
    .end local v2
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 124
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 120
    return-void
.end method
