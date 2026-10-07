.class public Lcom/android/settingslib/readboy/overscroll/ListenerStubs$OverScrollStateListenerStub;
.super Ljava/lang/Object;
.source "ListenerStubs.java"

# interfaces
.implements Lcom/android/settingslib/readboy/overscroll/IOverScrollStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/readboy/overscroll/ListenerStubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverScrollStateListenerStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverScrollStateChange(Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;II)V
    .locals 0
    .param p1, "decor"    # Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 10
    return-void
.end method
