.class Lcom/android/settings/RadioInfo$2;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;

    .line 293
    iput-object p1, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 297
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 329
    :pswitch_0    # 0x3eb 0x3ec 0x3ea
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 322
    :pswitch_1    # 0x3ee
    iget-object v0, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$500(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 324
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$400(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "update error"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    .end local v0
    :pswitch_2    # 0x3ed
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 315
    .restart local v0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$400(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "refresh error"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$400(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    goto :goto_0

    .line 308
    .end local v0
    :pswitch_3    # 0x3e9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 309
    .restart local v0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 310
    iget-object v1, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    const-string v2, "Set preferred network type failed."

    invoke-static {v1, v2}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    .end local v0
    :pswitch_4    # 0x3e8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 300
    .restart local v0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 301
    iget-object v1, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/RadioInfo;->access$100(Lcom/android/settings/RadioInfo;I)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object v2, p0, Lcom/android/settings/RadioInfo$2;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {}, Lcom/android/settings/RadioInfo;->access$200()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/android/settings/RadioInfo;->access$100(Lcom/android/settings/RadioInfo;I)V

    .line 306
    nop

    .line 333
    .end local v0
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4    # 0x3e8
        :pswitch_3    # 0x3e9
        :pswitch_0    # 0x3ea
        :pswitch_0    # 0x3eb
        :pswitch_0    # 0x3ec
        :pswitch_2    # 0x3ed
        :pswitch_1    # 0x3ee
    .end packed-switch
.end method
