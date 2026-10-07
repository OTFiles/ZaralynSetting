.class Lcom/android/settings/dashboard/conditional/ConditionAdapter$3;
.super Ljava/lang/Object;
.source "ConditionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/conditional/ConditionAdapter;->bindViews(Lcom/android/settings/dashboard/conditional/Condition;Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

.field final synthetic val$condition:Lcom/android/settings/dashboard/conditional/Condition;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionAdapter;Lcom/android/settings/dashboard/conditional/Condition;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    .line 163
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$3;->this$0:Lcom/android/settings/dashboard/conditional/ConditionAdapter;

    iput-object p2, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$3;->val$condition:Lcom/android/settings/dashboard/conditional/Condition;

    iput p3, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$3;->val$condition:Lcom/android/settings/dashboard/conditional/Condition;

    .line 169
    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v2

    .line 168
    const/16 v3, 0x178

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$3;->val$condition:Lcom/android/settings/dashboard/conditional/Condition;

    iget v2, p0, Lcom/android/settings/dashboard/conditional/ConditionAdapter$3;->val$index:I

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/conditional/Condition;->onActionClick(I)V

    .line 171
    return-void
.end method
