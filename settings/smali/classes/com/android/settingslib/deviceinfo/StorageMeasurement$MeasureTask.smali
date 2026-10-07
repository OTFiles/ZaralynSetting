.class Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;
.super Landroid/os/AsyncTask;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/deviceinfo/StorageMeasurement;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/deviceinfo/StorageMeasurement;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;->this$0:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/deviceinfo/StorageMeasurement;Lcom/android/settingslib/deviceinfo/StorageMeasurement$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement;
    .param p2, "x1"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$1;

    .line 138
    invoke-direct {p0, p1}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;-><init>(Lcom/android/settingslib/deviceinfo/StorageMeasurement;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .line 141
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;->this$0:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->access$100(Lcom/android/settingslib/deviceinfo/StorageMeasurement;)Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 138
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;->doInBackground([Ljava/lang/Void;)Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 1
    .param p1, "result"    # Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 146
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;->this$0:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->access$200(Lcom/android/settingslib/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;->this$0:Lcom/android/settingslib/deviceinfo/StorageMeasurement;

    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/StorageMeasurement;->access$200(Lcom/android/settingslib/deviceinfo/StorageMeasurement;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 147
    .local v0, "receiver":Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0, p1}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementReceiver;->onDetailsChanged(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    .line 150
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 138
    check-cast p1, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasureTask;->onPostExecute(Lcom/android/settingslib/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method
