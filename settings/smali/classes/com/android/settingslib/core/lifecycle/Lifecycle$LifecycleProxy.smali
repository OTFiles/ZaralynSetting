.class Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;
.super Ljava/lang/Object;
.source "Lifecycle.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/core/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifecycleProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/lifecycle/Lifecycle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p2, "x1"    # Lcom/android/settingslib/core/lifecycle/Lifecycle$1;

    .line 251
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public onLifecycleEvent(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 256
    :try_start_0
    sget-object v0, Lcom/android/settingslib/core/lifecycle/Lifecycle$1;->$SwitchMap$android$arch$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0    # 0x7
    const-string v0, "LifecycleObserver"

    const-string v1, "Should not receive an \'ANY\' event!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :pswitch_1    # 0x6
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$500(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 274
    goto :goto_0

    .line 270
    :pswitch_2    # 0x5
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$400(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 271
    goto :goto_0

    .line 267
    :pswitch_3    # 0x4
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$300(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 268
    goto :goto_0

    .line 264
    :pswitch_4    # 0x3
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$200(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 265
    goto :goto_0

    .line 261
    :pswitch_5    # 0x2
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->access$100(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 262
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :pswitch_6    # 0x1
    nop

    .line 280
    :goto_0
    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    .line 281
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6    # 0x1
        :pswitch_5    # 0x2
        :pswitch_4    # 0x3
        :pswitch_3    # 0x4
        :pswitch_2    # 0x5
        :pswitch_1    # 0x6
        :pswitch_0    # 0x7
    .end packed-switch
.end method
