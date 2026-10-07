.class Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;
.super Landroid/os/Handler;
.source "DevelopmentRiseAndFallCameraAdjustPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    .line 166
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->access$000(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;)J

    move-result-wide v0

    invoke-static {}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->access$100()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    const-string v0, ""

    const-string v1, "=====divhee======mHandler=====MSG_CALLBACK="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v1, v1, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    const-string v2, "MSG_CALLBACK"

    const/16 v3, 0x2000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->getPrivateField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 175
    .local v0, "msg_what":I
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v2, v2, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciManager:Ljava/lang/Object;

    const-string v3, "COMMAND_CALIBRATION"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->getPrivateField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 176
    .local v1, "command":I
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "==command="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "=====divhee======COMMAND_CALIBRATION=====msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "==msg.arg1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "==msg.arg2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_3

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_3

    .line 178
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 179
    .local v2, "ret":I
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=====divhee======COMMAND_CALIBRATION=====ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v3, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-static {v3}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->access$200(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, "iMessageId":I
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 184
    :sswitch_0    # 0x0
    const v3, 0x7f120b8d

    .line 185
    goto :goto_0

    .line 187
    :sswitch_1    # -0x1
    const v3, 0x7f120b8e

    .line 188
    goto :goto_0

    .line 190
    :sswitch_2    # -0x7e
    const v3, 0x7f120b8f

    .line 191
    goto :goto_0

    .line 193
    :sswitch_3    # -0x7f
    const v3, 0x7f120b90

    .line 196
    :goto_0
    if-eqz v3, :cond_3

    .line 197
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v4, v4, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v4, v4, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 199
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    .line 201
    :cond_1
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-static {v6}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->access$300(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;)Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-static {v6}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->access$300(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;)Landroid/app/Activity;

    move-result-object v6

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-static {v6}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->access$200(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;)Landroid/content/Context;

    move-result-object v6

    :goto_1
    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f120b4f

    .line 203
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 204
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f120b02

    new-instance v7, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1$1;

    invoke-direct {v7, p0}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1$1;-><init>(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;)V

    .line 205
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 211
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 212
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    .line 213
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v4, v4, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1$2;

    invoke-direct {v5, p0}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1$2;-><init>(Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 225
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=====divhee=======mRbciAlertDlg==11="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v6, v6, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    iget-object v4, v4, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->mRbciAlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 227
    const-string v4, ""

    const-string v5, "=====divhee=======mRbciAlertDlg==22="

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v4, p0, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController$1;->this$0:Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;

    invoke-virtual {v4, v3}, Lcom/android/settings/development/DevelopmentRiseAndFallCameraAdjustPreferenceController;->refreshRbciRiseFallCameraStatus(I)V

    .line 234
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_2

    .line 233
    :catch_0
    move-exception v0

    .line 235
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f -> :sswitch_3
        -0x7e -> :sswitch_2
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0

    .end sparse-switch
.end method
