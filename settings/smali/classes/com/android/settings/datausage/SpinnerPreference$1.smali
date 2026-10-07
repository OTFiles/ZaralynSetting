.class Lcom/android/settings/datausage/SpinnerPreference$1;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/SpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/SpinnerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/SpinnerPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/SpinnerPreference;

    .line 76
    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference$1;->this$0:Lcom/android/settings/datausage/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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

    .line 79
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference$1;->this$0:Lcom/android/settings/datausage/SpinnerPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/SpinnerPreference;->access$000(Lcom/android/settings/datausage/SpinnerPreference;)I

    move-result v0

    if-ne v0, p3, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference$1;->this$0:Lcom/android/settings/datausage/SpinnerPreference;

    invoke-static {v0, p3}, Lcom/android/settings/datausage/SpinnerPreference;->access$002(Lcom/android/settings/datausage/SpinnerPreference;I)I

    .line 81
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference$1;->this$0:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object v1, p0, Lcom/android/settings/datausage/SpinnerPreference$1;->this$0:Lcom/android/settings/datausage/SpinnerPreference;

    invoke-static {v1}, Lcom/android/settings/datausage/SpinnerPreference;->access$200(Lcom/android/settings/datausage/SpinnerPreference;)Lcom/android/settings/datausage/CycleAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/datausage/SpinnerPreference;->access$102(Lcom/android/settings/datausage/SpinnerPreference;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference$1;->this$0:Lcom/android/settings/datausage/SpinnerPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/SpinnerPreference;->access$300(Lcom/android/settings/datausage/SpinnerPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 83
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 87
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference$1;->this$0:Lcom/android/settings/datausage/SpinnerPreference;

    invoke-static {v0}, Lcom/android/settings/datausage/SpinnerPreference;->access$300(Lcom/android/settings/datausage/SpinnerPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 88
    return-void
.end method
