.class Lcom/android/settings/SettingsApp$7;
.super Ljava/lang/Object;
.source "SettingsApp.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsApp;->showPasswordDialog(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsApp;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$alertDlg:Landroid/app/AlertDialog;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$needExit:Z


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsApp;Landroid/widget/EditText;ZLandroid/app/Activity;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsApp;

    .line 812
    iput-object p1, p0, Lcom/android/settings/SettingsApp$7;->this$0:Lcom/android/settings/SettingsApp;

    iput-object p2, p0, Lcom/android/settings/SettingsApp$7;->val$edit:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcom/android/settings/SettingsApp$7;->val$needExit:Z

    iput-object p4, p0, Lcom/android/settings/SettingsApp$7;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/android/settings/SettingsApp$7;->val$alertDlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 815
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 834
    :cond_0
    return v0

    .line 818
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SettingsApp$7;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, "pwdValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/custom/EditFilterName;->isValidName(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 820
    iget-object v2, p0, Lcom/android/settings/SettingsApp$7;->this$0:Lcom/android/settings/SettingsApp;

    invoke-virtual {v2, v1}, Lcom/android/settings/SettingsApp;->isPasswordCorrect(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 821
    iget-object v2, p0, Lcom/android/settings/SettingsApp$7;->this$0:Lcom/android/settings/SettingsApp;

    iget-object v2, v2, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    iget-object v4, p0, Lcom/android/settings/SettingsApp$7;->this$0:Lcom/android/settings/SettingsApp;

    iget-object v4, v4, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    invoke-virtual {v4}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    iget-boolean v0, p0, Lcom/android/settings/SettingsApp$7;->val$needExit:Z

    if-eqz v0, :cond_4

    .line 823
    iget-object v0, p0, Lcom/android/settings/SettingsApp$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 826
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsApp$7;->this$0:Lcom/android/settings/SettingsApp;

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    iget-object v2, p0, Lcom/android/settings/SettingsApp$7;->this$0:Lcom/android/settings/SettingsApp;

    iget-object v2, v2, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    invoke-virtual {v2}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 829
    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const v2, 0x7f1202a5

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsApp;->showAppToastLong(I)V

    .line 831
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/SettingsApp$7;->val$alertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 832
    return v3
.end method
