.class Lcom/android/settings/accounts/AddAccountSettings$1;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AddAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AddAccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accounts/AddAccountSettings;

    .line 88
    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v0, 0x1

    .line 93
    .local v0, "done":Z
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 95
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 96
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 98
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v4, "addAccountOptions":Landroid/os/Bundle;
    const-string v5, "pendingIntent"

    iget-object v6, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v6}, Lcom/android/settings/accounts/AddAccountSettings;->access$000(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    const-string v5, "hasMultipleUsers"

    iget-object v6, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    .line 101
    invoke-static {v6}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v6

    .line 100
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    const-string v5, "android.intent.extra.USER"

    iget-object v6, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v6}, Lcom/android/settings/accounts/AddAccountSettings;->access$100(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    iget-object v5, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    iget-object v6, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v6}, Lcom/android/settings/accounts/AddAccountSettings;->access$100(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v3, v1, v6}, Lcom/android/settings/accounts/AddAccountSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 106
    .end local v4
    goto :goto_0

    .line 107
    :cond_0
    iget-object v4, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 108
    iget-object v4, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AddAccountSettings;->access$000(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 109
    iget-object v4, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v4}, Lcom/android/settings/accounts/AddAccountSettings;->access$000(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/PendingIntent;->cancel()V

    .line 110
    iget-object v4, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/settings/accounts/AddAccountSettings;->access$002(Lcom/android/settings/accounts/AddAccountSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 114
    :cond_1
    :goto_0
    const-string v4, "AddAccountSettings"

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "AddAccountSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v2
    .end local v3
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_6

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    goto :goto_2

    .line 122
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Landroid/accounts/AuthenticatorException;
    :try_start_1
    const-string v3, "AddAccountSettings"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AddAccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v2
    :cond_3
    if-eqz v0, :cond_6

    goto :goto_1

    .line 117
    :catch_1
    move-exception v2

    .line 118
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "AddAccountSettings"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "AddAccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v2
    :cond_4
    if-eqz v0, :cond_6

    goto :goto_1

    .line 115
    :catch_2
    move-exception v2

    .line 116
    .local v2, "e":Landroid/accounts/OperationCanceledException;
    const-string v3, "AddAccountSettings"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "AddAccountSettings"

    const-string v3, "addAccount was canceled"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v0, :cond_6

    goto :goto_1

    .line 126
    :cond_6
    :goto_2
    return-void

    .line 122
    :goto_3
    if-eqz v0, :cond_7

    .line 123
    iget-object v2, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->this$0:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v2}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    :cond_7
    throw v1
.end method
