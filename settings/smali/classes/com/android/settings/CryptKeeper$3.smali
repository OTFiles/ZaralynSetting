.class Lcom/android/settings/CryptKeeper$3;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeper;

    .line 320
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$3;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 323
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_0    # 0x2
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$3;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$1100(Lcom/android/settings/CryptKeeper;)V

    goto :goto_0

    .line 325
    :pswitch_1    # 0x1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$3;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$1000(Lcom/android/settings/CryptKeeper;)V

    .line 326
    nop

    .line 332
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1    # 0x1
        :pswitch_0    # 0x2
    .end packed-switch
.end method
