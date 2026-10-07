.class public interface abstract Lcom/readboy/store/download/DownloadRunnable$DownloadStateChanged;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readboy/store/download/DownloadRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadStateChanged"
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Ljava/io/File;)V
.end method
