.class Lcom/android/settings/SetFullBackupPassword$1;
.super Ljava/lang/Object;
.source "SetFullBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetFullBackupPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SetFullBackupPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/SetFullBackupPassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SetFullBackupPassword;

    .line 38
    iput-object p1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->mSet:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->mCurrentPw:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "curPw":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v1, v1, Lcom/android/settings/SetFullBackupPassword;->mNewPw:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "newPw":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v2, v2, Lcom/android/settings/SetFullBackupPassword;->mConfirmNewPw:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "confirmPw":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 48
    const-string v3, "SetFullBackupPassword"

    const-string v5, "password mismatch"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    const v5, 0x7f1207a3

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 52
    return-void

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    invoke-static {v3, v0, v1}, Lcom/android/settings/SetFullBackupPassword;->access$000(Lcom/android/settings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    const-string v3, "SetFullBackupPassword"

    const-string v5, "password set successfully"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    const v5, 0x7f1207a4

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 63
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {v3}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    goto :goto_0

    .line 66
    :cond_1
    const-string v3, "SetFullBackupPassword"

    const-string v5, "failure; password mismatch?"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v3, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    const v5, 0x7f1207a5

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 71
    .end local v0
    .end local v1
    .end local v2
    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword$1;->this$0:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {v0}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    goto :goto_1

    .line 74
    :cond_3
    const-string v0, "SetFullBackupPassword"

    const-string v1, "Click on unknown view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_1
    return-void
.end method
