.class Lcom/android/settings/widget/LoadingViewController$1;
.super Ljava/lang/Object;
.source "LoadingViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/LoadingViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/LoadingViewController;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/LoadingViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/LoadingViewController;

    .line 42
    iput-object p1, p0, Lcom/android/settings/widget/LoadingViewController$1;->this$0:Lcom/android/settings/widget/LoadingViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController$1;->this$0:Lcom/android/settings/widget/LoadingViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZ)V

    .line 45
    return-void
.end method
