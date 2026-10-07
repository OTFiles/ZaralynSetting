.class Lcom/android/settings/SettingsApp$6;
.super Ljava/lang/Object;
.source "SettingsApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$needExit:Z


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsApp;Landroid/widget/EditText;ZLandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsApp;

    .line 772
    iput-object p1, p0, Lcom/android/settings/SettingsApp$6;->this$0:Lcom/android/settings/SettingsApp;

    iput-object p2, p0, Lcom/android/settings/SettingsApp$6;->val$edit:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcom/android/settings/SettingsApp$6;->val$needExit:Z

    iput-object p4, p0, Lcom/android/settings/SettingsApp$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 774
    iget-object v0, p0, Lcom/android/settings/SettingsApp$6;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, "pwdValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/custom/EditFilterName;->isValidName(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 776
    iget-object v1, p0, Lcom/android/settings/SettingsApp$6;->this$0:Lcom/android/settings/SettingsApp;

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsApp;->isPasswordCorrect(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/android/settings/SettingsApp$6;->this$0:Lcom/android/settings/SettingsApp;

    iget-object v1, v1, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    iget-object v4, p0, Lcom/android/settings/SettingsApp$6;->this$0:Lcom/android/settings/SettingsApp;

    iget-object v4, v4, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    invoke-virtual {v4}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 778
    iget-boolean v1, p0, Lcom/android/settings/SettingsApp$6;->val$needExit:Z

    if-eqz v1, :cond_3

    .line 779
    iget-object v1, p0, Lcom/android/settings/SettingsApp$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsApp$6;->this$0:Lcom/android/settings/SettingsApp;

    iget-object v1, v1, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    iget-object v2, p0, Lcom/android/settings/SettingsApp$6;->this$0:Lcom/android/settings/SettingsApp;

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

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 785
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const v4, 0x7f1202a5

    invoke-virtual {v1, v4}, Lcom/android/settings/SettingsApp;->showAppToastLong(I)V

    .line 786
    iget-boolean v1, p0, Lcom/android/settings/SettingsApp$6;->val$needExit:Z

    if-eqz v1, :cond_2

    .line 787
    iget-object v1, p0, Lcom/android/settings/SettingsApp$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 789
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsApp$6;->this$0:Lcom/android/settings/SettingsApp;

    iget-object v1, v1, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    iget-object v4, p0, Lcom/android/settings/SettingsApp$6;->this$0:Lcom/android/settings/SettingsApp;

    iget-object v4, v4, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    invoke-virtual {v4}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 791
    :cond_3
    :goto_0
    return-void
.end method
