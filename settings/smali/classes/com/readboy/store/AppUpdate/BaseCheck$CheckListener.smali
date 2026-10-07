.class public interface abstract Lcom/readboy/store/AppUpdate/BaseCheck$CheckListener;
.super Ljava/lang/Object;
.source "BaseCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/store/AppUpdate/BaseCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CheckListener"
.end annotation


# virtual methods
.method public abstract fileExist(Ljava/lang/Object;)V
.end method

.method public abstract needUpdate(Ljava/lang/Object;)V
.end method

.method public abstract onError(I)V
.end method
