.class Lcom/android/settings/HandyGestureSettings$1;
.super Landroid/os/Handler;
.source "HandyGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HandyGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HandyGestureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/HandyGestureSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/HandyGestureSettings;

    .line 90
    iput-object p1, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0    # 0x10104
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    invoke-virtual {v0}, Lcom/android/settings/HandyGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    .local v0, "activity3":Landroid/app/Activity;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    iget-boolean v2, v2, Lcom/android/settings/HandyGestureSettings;->isDestoryed:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    invoke-static {v2}, Lcom/android/settings/HandyGestureSettings;->access$000(Lcom/android/settings/HandyGestureSettings;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    invoke-static {v2}, Lcom/android/settings/HandyGestureSettings;->access$000(Lcom/android/settings/HandyGestureSettings;)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/HandyGestureSettings;->initQQAssetAnimViewOne(Landroid/app/Activity;I)V

    .end local v0
    goto :goto_0

    .line 107
    :pswitch_1    # 0x10103
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    invoke-virtual {v0}, Lcom/android/settings/HandyGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 108
    .local v0, "activity2":Landroid/app/Activity;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    iget-boolean v1, v1, Lcom/android/settings/HandyGestureSettings;->isDestoryed:Z

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/HandyGestureSettings;->initQQAssetAnimViewOne(Landroid/app/Activity;I)V

    goto :goto_0

    .line 101
    .end local v0
    :pswitch_2    # 0x10102
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    invoke-virtual {v0}, Lcom/android/settings/HandyGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 102
    .local v0, "activity1":Landroid/app/Activity;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    iget-boolean v2, v2, Lcom/android/settings/HandyGestureSettings;->isDestoryed:Z

    if-nez v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/HandyGestureSettings;->initQQAssetAnimViewOne(Landroid/app/Activity;I)V

    goto :goto_0

    .line 95
    .end local v0
    :pswitch_3    # 0x10101
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    invoke-virtual {v0}, Lcom/android/settings/HandyGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 96
    .local v0, "activity0":Landroid/app/Activity;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    iget-boolean v1, v1, Lcom/android/settings/HandyGestureSettings;->isDestoryed:Z

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/settings/HandyGestureSettings$1;->this$0:Lcom/android/settings/HandyGestureSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/HandyGestureSettings;->initQQAssetAnimViewOne(Landroid/app/Activity;I)V

    .line 119
    .end local v0
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x10101
        :pswitch_3    # 0x10101
        :pswitch_2    # 0x10102
        :pswitch_1    # 0x10103
        :pswitch_0    # 0x10104
    .end packed-switch
.end method
