.class Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$2;
.super Ljava/lang/Object;
.source "NbWhiteAppListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->onlyUpdateAdapterNbDuibiItemStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    .line 315
    iput-object p1, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$2;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 318
    const-string v0, ""

    const-string v1, "=====divhee=====onlyUpdateAdapterNbDuibiItemStatus====="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter$2;->this$0:Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/porttapplandshow/NbWhiteAppListAdapter;->notifyDataSetChanged()V

    .line 320
    return-void
.end method
