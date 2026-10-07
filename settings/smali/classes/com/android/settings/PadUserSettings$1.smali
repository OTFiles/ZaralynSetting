.class Lcom/android/settings/PadUserSettings$1;
.super Ljava/lang/Object;
.source "PadUserSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PadUserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PadUserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PadUserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/PadUserSettings;

    .line 144
    iput-object p1, p0, Lcom/android/settings/PadUserSettings$1;->this$0:Lcom/android/settings/PadUserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 147
    if-nez p1, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02df

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a02e3

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a02e6

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 153
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dream_launcher_mode_lable"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dream_launcher_mode_lable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 156
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/android/settings/PadUserSettings$1;->this$0:Lcom/android/settings/PadUserSettings;

    invoke-virtual {v0}, Lcom/android/settings/PadUserSettings;->updateNavigationBarStatus()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/PadUserSettings$1;->this$0:Lcom/android/settings/PadUserSettings;

    invoke-virtual {v0}, Lcom/android/settings/PadUserSettings;->exchangeDreamLauncherForModeChange()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/PadUserSettings$1;->this$0:Lcom/android/settings/PadUserSettings;

    invoke-virtual {v0}, Lcom/android/settings/PadUserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 160
    goto :goto_2

    .line 175
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.SET_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/android/settings/PadUserSettings$1;->this$0:Lcom/android/settings/PadUserSettings;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/PadUserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    .end local v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 179
    :catch_1
    move-exception v0

    goto :goto_2

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/android/settings/PadUserSettings$1;->this$0:Lcom/android/settings/PadUserSettings;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Lcom/android/settings/PadUserSettings;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 164
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .restart local v0
    const-string v1, "android.readboy.parentmanager.SET_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v1, "com.readboy.parentmanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/android/settings/PadUserSettings$1;->this$0:Lcom/android/settings/PadUserSettings;

    const/16 v2, 0x271b

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/PadUserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 168
    :catch_2
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====divhee==========pad_user_adult_mode====4="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0
    :goto_1
    nop

    .line 183
    :cond_4
    :goto_2
    return-void
.end method
