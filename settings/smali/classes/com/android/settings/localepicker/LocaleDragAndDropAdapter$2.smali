.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field final synthetic val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    .line 165
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 168
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings/localepicker/LocaleDragCell;

    .line 169
    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 170
    .local v0, "feedItem":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0, p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 171
    return-void
.end method
