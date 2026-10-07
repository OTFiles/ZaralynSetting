.class Lcom/android/settings/datausage/AppDataUsage$1;
.super Ljava/lang/Object;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/AppDataUsage;

    .line 374
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 377
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$000(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/datausage/SpinnerPreference;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 379
    .local v0, "cycle":Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-wide v2, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/AppDataUsage;->access$102(Lcom/android/settings/datausage/AppDataUsage;J)J

    .line 380
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    iget-wide v2, v0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/AppDataUsage;->access$202(Lcom/android/settings/datausage/AppDataUsage;J)J

    .line 381
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$1;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings/datausage/AppDataUsage;->access$300(Lcom/android/settings/datausage/AppDataUsage;)V

    .line 382
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 387
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
