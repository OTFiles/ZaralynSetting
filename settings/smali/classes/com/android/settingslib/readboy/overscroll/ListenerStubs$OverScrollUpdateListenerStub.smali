.class public Lcom/android/settingslib/readboy/overscroll/ListenerStubs$OverScrollUpdateListenerStub;
.super Ljava/lang/Object;
.source "ListenerStubs.java"

# interfaces
.implements Lcom/android/settingslib/readboy/overscroll/IOverScrollUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/readboy/overscroll/ListenerStubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OverScrollUpdateListenerStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverScrollUpdate(Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;IF)V
    .locals 0
    .param p1, "decor"    # Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;
    .param p2, "state"    # I
    .param p3, "offset"    # F

    .line 15
    return-void
.end method
