.class Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;
.super Ljava/lang/Object;
.source "ExportLogFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ExportLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResearchLogOutHandlerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ExportLogFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/ExportLogFragment;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/ExportLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ExportLogFragment;Lcom/android/settings/ExportLogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/ExportLogFragment;
    .param p2, "x1"    # Lcom/android/settings/ExportLogFragment$1;

    .line 214
    invoke-direct {p0, p1}, Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;-><init>(Lcom/android/settings/ExportLogFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 218
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0    # 0x10014
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/ExportLogFragment;

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lcom/android/settings/ExportLogFragment;->isExportLogUpdloadTimesEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/ExportLogFragment;

    invoke-virtual {v0}, Lcom/android/settings/ExportLogFragment;->appLogsExport4()V

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const-string v2, "\u62b1\u6b49\uff0c\u4eca\u65e5\u63d0\u4ea4\u65e5\u5fd7Log\u5df2\u8d85\u4e0a\u9650\uff0c\u5982\u9700\u7ee7\u7eed\u4e0a\u4f20\u8bf7\u54a8\u8be2\u5de5\u7a0b\u5e08\u3002"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 230
    :pswitch_1    # 0x10013
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/ExportLogFragment;

    invoke-virtual {v0}, Lcom/android/settings/ExportLogFragment;->appLogsExport3()V

    .line 231
    goto :goto_0

    .line 227
    :pswitch_2    # 0x10012
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/ExportLogFragment;

    invoke-virtual {v0}, Lcom/android/settings/ExportLogFragment;->appLogsExport2()V

    .line 228
    goto :goto_0

    .line 220
    :pswitch_3    # 0x10011
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/ExportLogFragment;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/android/settings/ExportLogFragment;->isExportLogUpdloadTimesEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/settings/ExportLogFragment$ResearchLogOutHandlerThread;->this$0:Lcom/android/settings/ExportLogFragment;

    invoke-virtual {v0}, Lcom/android/settings/ExportLogFragment;->appLogsExport1()V

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const-string v2, "\u62b1\u6b49\uff0c\u4eca\u65e5\u63d0\u4ea4\u65e5\u5fd7Log\u5df2\u8d85\u4e0a\u9650\uff0c\u5982\u9700\u7ee7\u7eed\u4e0a\u4f20\u8bf7\u54a8\u8be2\u5de5\u7a0b\u5e08\u3002"

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/SettingsApp;->showAppToast(Ljava/lang/CharSequence;I)V

    .line 225
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 240
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    .end local v0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x10011
        :pswitch_3    # 0x10011
        :pswitch_2    # 0x10012
        :pswitch_1    # 0x10013
        :pswitch_0    # 0x10014
    .end packed-switch
.end method
