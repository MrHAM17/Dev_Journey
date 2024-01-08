package com.hiredjobsearch.app.modules.notificationsgeneral.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.databinding.RowNotificationsgeneralBinding
import com.hiredjobsearch.app.modules.notificationsgeneral.`data`.model.NotificationsgeneralRowModel
import kotlin.Int
import kotlin.collections.List

class NotificationsGeneralAdapter(
  var list: List<NotificationsgeneralRowModel>
) : RecyclerView.Adapter<NotificationsGeneralAdapter.RowNotificationsgeneralVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowNotificationsgeneralVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_notificationsgeneral,parent,false)
    return RowNotificationsgeneralVH(view)
  }

  override fun onBindViewHolder(holder: RowNotificationsgeneralVH, position: Int) {
    val notificationsgeneralRowModel = NotificationsgeneralRowModel()
    // TODO uncomment following line after integration with data source
    // val notificationsgeneralRowModel = list[position]
    holder.binding.notificationsgeneralRowModel = notificationsgeneralRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<NotificationsgeneralRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: NotificationsgeneralRowModel
    ) {
    }
  }

  inner class RowNotificationsgeneralVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowNotificationsgeneralBinding = RowNotificationsgeneralBinding.bind(itemView)
  }
}
