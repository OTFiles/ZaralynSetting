.class Lcom/android/settings/applications/RunningServicesOLD$1;
.super Ljava/lang/Object;
.source "RunningServicesOLD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningServicesOLD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningServicesOLD;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServicesOLD;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/RunningServicesOLD;

    .line 116
    iput-object p1, p0, Lcom/android/settings/applications/RunningServicesOLD$1;->this$0:Lcom/android/settings/applications/RunningServicesOLD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/RunningServicesOLD$1;->this$0:Lcom/android/settings/applications/RunningServicesOLD;

    invoke-static {v0}, Lcom/android/settings/applications/RunningServicesOLD;->access$000(Lcom/android/settings/applications/RunningServicesOLD;)Lcom/android/settings/widget/LoadingViewController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    .line 120
    return-void
.end method
