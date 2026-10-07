.class Lcom/android/settings/datausage/DataUsageList$2;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageList;

    .line 164
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$100(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V
    .locals 1
    .param p1, "cycleAdapter"    # Lcom/android/settings/datausage/CycleAdapter;

    .line 167
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$100(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 168
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 172
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$100(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 173
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 182
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$2;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageList;->access$100(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 183
    return-void
.end method
