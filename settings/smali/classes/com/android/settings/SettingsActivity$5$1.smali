.class Lcom/android/settings/SettingsActivity$5$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity$5;->propertyChange(Ljava/beans/PropertyChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsActivity$5;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/SettingsActivity$5;

    .line 872
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 875
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    iget-object v0, v0, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    const v1, 0x7f0a0251

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/view/LocalBreadCrumbs;

    .line 876
    .local v0, "crumbs":Lcom/android/settings/view/LocalBreadCrumbs;
    if-eqz v0, :cond_3

    .line 877
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    iget-object v3, v3, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "===divhee================onPreferenceStartFragment==setBreadCrumbsTitle==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/settings/view/LocalBreadCrumbs;->getChildTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    iget-object v3, v3, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v3}, Lcom/android/settings/SettingsActivity;->access$400(Lcom/android/settings/SettingsActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    iget-object v1, v1, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/view/LocalBreadCrumbs;->setBreadCrumbsTitle(Landroid/app/Activity;)V

    .line 881
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    iget-object v1, v1, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->access$400(Lcom/android/settings/SettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    iget-object v1, v1, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->access$500(Lcom/android/settings/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 882
    invoke-virtual {v0}, Lcom/android/settings/view/LocalBreadCrumbs;->getChildTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 883
    .local v1, "nowTitle":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    iget-object v2, v2, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120cd0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 884
    .local v2, "mDefaultTitle":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 885
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    iget-object v3, v3, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 886
    .local v3, "showedTitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 887
    move-object v1, v3

    .line 890
    .end local v3
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 891
    iget-object v3, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    iget-object v3, v3, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v3}, Lcom/android/settings/SettingsActivity;->access$500(Lcom/android/settings/SettingsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    :cond_2
    iget-object v3, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    iget-object v3, v3, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v3}, Lcom/android/settings/SettingsActivity;->access$600(Lcom/android/settings/SettingsActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 894
    iget-object v3, p0, Lcom/android/settings/SettingsActivity$5$1;->this$1:Lcom/android/settings/SettingsActivity$5;

    iget-object v3, v3, Lcom/android/settings/SettingsActivity$5;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v3}, Lcom/android/settings/SettingsActivity;->access$600(Lcom/android/settings/SettingsActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 898
    .end local v1
    .end local v2
    :cond_3
    return-void
.end method
