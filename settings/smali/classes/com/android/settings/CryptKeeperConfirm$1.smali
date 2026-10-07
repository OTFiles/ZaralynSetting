.class Lcom/android/settings/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeperConfirm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeperConfirm;

    .line 101
    iput-object p1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 104
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "utils":Lcom/android/internal/widget/LockPatternUtils;
    nop

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v2

    .line 125
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v2}, Lcom/android/settings/CryptKeeperConfirm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 135
    .local v2, "value":I
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    .line 137
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v3}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/CryptKeeperConfirm$Blank;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v3}, Lcom/android/settings/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 139
    iget-object v3, p0, Lcom/android/settings/CryptKeeperConfirm$1;->this$0:Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v3, v1}, Lcom/android/settings/CryptKeeperConfirm;->startActivity(Landroid/content/Intent;)V

    .line 143
    :try_start_0
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 144
    .local v3, "service":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v4

    .line 145
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    const-string v5, "SystemLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v3
    .end local v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "CryptKeeperConfirm"

    const-string v5, "Error storing locale for decryption UI"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v3
    :goto_1
    return-void
.end method
