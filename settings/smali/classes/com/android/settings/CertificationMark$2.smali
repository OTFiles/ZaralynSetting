.class Lcom/android/settings/CertificationMark$2;
.super Ljava/lang/Object;
.source "CertificationMark.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CertificationMark;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CertificationMark;


# direct methods
.method constructor <init>(Lcom/android/settings/CertificationMark;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CertificationMark;

    .line 138
    iput-object p1, p0, Lcom/android/settings/CertificationMark$2;->this$0:Lcom/android/settings/CertificationMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/android/settings/CertificationMark$2;->this$0:Lcom/android/settings/CertificationMark;

    invoke-static {v0}, Lcom/android/settings/CertificationMark;->access$000(Lcom/android/settings/CertificationMark;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CertificationMark$2;->this$0:Lcom/android/settings/CertificationMark;

    invoke-static {v0}, Lcom/android/settings/CertificationMark;->access$000(Lcom/android/settings/CertificationMark;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " (013) "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CertificationMark$2;->this$0:Lcom/android/settings/CertificationMark;

    invoke-static {v0, v1}, Lcom/android/settings/CertificationMark;->access$102(Lcom/android/settings/CertificationMark;I)I

    .line 143
    iget-object v0, p0, Lcom/android/settings/CertificationMark$2;->this$0:Lcom/android/settings/CertificationMark;

    const-string v2, " (013) "

    invoke-static {v0, v2}, Lcom/android/settings/CertificationMark;->access$002(Lcom/android/settings/CertificationMark;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CertificationMark$2;->this$0:Lcom/android/settings/CertificationMark;

    invoke-static {v0}, Lcom/android/settings/CertificationMark;->access$108(Lcom/android/settings/CertificationMark;)I

    .line 147
    iget-object v0, p0, Lcom/android/settings/CertificationMark$2;->this$0:Lcom/android/settings/CertificationMark;

    invoke-static {v0}, Lcom/android/settings/CertificationMark;->access$100(Lcom/android/settings/CertificationMark;)I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/settings/CertificationMark$2;->this$0:Lcom/android/settings/CertificationMark;

    invoke-virtual {v0}, Lcom/android/settings/CertificationMark;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, " (013) "

    invoke-static {v0, v2}, Lcom/android/settings/CertificationMark;->resetFactoryFlags(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/CertificationMark$2;->this$0:Lcom/android/settings/CertificationMark;

    invoke-static {v0, v1}, Lcom/android/settings/CertificationMark;->access$102(Lcom/android/settings/CertificationMark;I)I

    .line 152
    iget-object v0, p0, Lcom/android/settings/CertificationMark$2;->this$0:Lcom/android/settings/CertificationMark;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/CertificationMark;->access$002(Lcom/android/settings/CertificationMark;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    :cond_2
    return-void
.end method
