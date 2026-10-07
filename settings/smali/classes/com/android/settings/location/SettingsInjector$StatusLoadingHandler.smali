.class final Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;
.super Landroid/os/Handler;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/SettingsInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatusLoadingHandler"
.end annotation


# instance fields
.field private mReloadRequested:Z

.field private mSettingsBeingLoaded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsToLoad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field

.field private mTimedOutSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/location/SettingsInjector;


# direct methods
.method private constructor <init>(Lcom/android/settings/location/SettingsInjector;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->this$0:Lcom/android/settings/location/SettingsInjector;

    .line 391
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 373
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsToLoad:Ljava/util/Set;

    .line 379
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    .line 386
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    .line 392
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/SettingsInjector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/location/SettingsInjector;
    .param p2, "x1"    # Lcom/android/settings/location/SettingsInjector$1;

    .line 368
    invoke-direct {p0, p1}, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;-><init>(Lcom/android/settings/location/SettingsInjector;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 395
    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const-string v0, "SettingsInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 421
    const-string v0, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :pswitch_0    # 0x3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/location/SettingsInjector$Setting;

    .line 413
    .local v0, "timedOutSetting":Lcom/android/settings/location/SettingsInjector$Setting;
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 414
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    const-string v3, "SettingsInjector"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    const-string v3, "SettingsInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timed out after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settings/location/SettingsInjector$Setting;->getElapsedTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " millis trying to get status for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    .end local v0
    :pswitch_1    # 0x2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/location/SettingsInjector$Setting;

    .line 406
    .local v0, "receivedSetting":Lcom/android/settings/location/SettingsInjector$Setting;
    invoke-virtual {v0}, Lcom/android/settings/location/SettingsInjector$Setting;->maybeLogElapsedTime()V

    .line 407
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 408
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->removeMessages(ILjava/lang/Object;)V

    .line 410
    goto :goto_0

    .line 402
    .end local v0
    :pswitch_2    # 0x1
    iput-boolean v2, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mReloadRequested:Z

    .line 403
    nop

    .line 426
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v3, 0x2

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    goto/16 :goto_1

    .line 437
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mReloadRequested:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsToLoad:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    .line 438
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 439
    const-string v0, "SettingsInjector"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    const-string v0, "SettingsInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reloading because idle and reload requesteed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsToLoad:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->this$0:Lcom/android/settings/location/SettingsInjector;

    invoke-static {v2}, Lcom/android/settings/location/SettingsInjector;->access$300(Lcom/android/settings/location/SettingsInjector;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mReloadRequested:Z

    .line 448
    :cond_4
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsToLoad:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 449
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/location/SettingsInjector$Setting;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 450
    const-string v1, "SettingsInjector"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 451
    const-string v1, "SettingsInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nothing left to do for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_5
    return-void

    .line 455
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/location/SettingsInjector$Setting;

    .line 456
    .local v2, "setting":Lcom/android/settings/location/SettingsInjector$Setting;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 459
    invoke-virtual {v2}, Lcom/android/settings/location/SettingsInjector$Setting;->startService()V

    .line 460
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 465
    .local v3, "timeoutMsg":Landroid/os/Message;
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 467
    const-string v4, "SettingsInjector"

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 468
    const-string v1, "SettingsInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", started loading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_7
    return-void

    .line 431
    .end local v0
    .end local v2
    .end local v3
    :cond_8
    :goto_1
    const-string v0, "SettingsInjector"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 432
    const-string v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too many services already live for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusLoadingHandler{mSettingsToLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsToLoad:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSettingsBeingLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mSettingsBeingLoaded:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimedOutSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mTimedOutSettings:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReloadRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;->mReloadRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
