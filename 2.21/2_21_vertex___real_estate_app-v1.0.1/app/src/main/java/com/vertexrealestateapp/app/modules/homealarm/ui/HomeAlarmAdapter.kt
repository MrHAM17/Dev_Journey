package com.vertexrealestateapp.app.modules.homealarm.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.databinding.RowHomealarmBinding
import com.vertexrealestateapp.app.modules.homealarm.`data`.model.HomealarmRowModel
import kotlin.Int
import kotlin.collections.List

class HomeAlarmAdapter(
  var list: List<HomealarmRowModel>
) : RecyclerView.Adapter<HomeAlarmAdapter.RowHomealarmVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowHomealarmVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_homealarm,parent,false)
    return RowHomealarmVH(view)
  }

  override fun onBindViewHolder(holder: RowHomealarmVH, position: Int) {
    val homealarmRowModel = HomealarmRowModel()
    // TODO uncomment following line after integration with data source
    // val homealarmRowModel = list[position]
    holder.binding.homealarmRowModel = homealarmRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<HomealarmRowModel>) {
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
      item: HomealarmRowModel
    ) {
    }
  }

  inner class RowHomealarmVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowHomealarmBinding = RowHomealarmBinding.bind(itemView)
    init {
      binding.btnPhone.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, HomealarmRowModel())
      }
    }
  }
}
