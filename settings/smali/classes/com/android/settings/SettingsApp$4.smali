.class Lcom/android/settings/SettingsApp$4;
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

.field final synthetic val$needExit:Z


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsApp;ZLandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsApp;

    .line 800
    iput-object p1, p0, Lcom/android/settings/SettingsApp$4;->this$0:Lcom/android/settings/SettingsApp;

    iput-boolean p2, p0, Lcom/android/settings/SettingsApp$4;->val$needExit:Z

    iput-object p3, p0, Lcom/android/settings/SettingsApp$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 802
    iget-object v0, p0, Lcom/android/settings/SettingsApp$4;->this$0:Lcom/android/settings/SettingsApp;

    iget-object v0, v0, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    iget-object v1, p0, Lcom/android/settings/SettingsApp$4;->this$0:Lcom/android/settings/SettingsApp;

    iget-object v1, v1, Lcom/android/settings/SettingsApp;->mPwdVertify:Lcom/android/settings/BeanVariable;

    invoke-virtual {v1}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 803
    iget-boolean v0, p0, Lcom/android/settings/SettingsApp$4;->val$needExit:Z

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/settings/SettingsApp$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 806
    :cond_0
    return-void
.end method
