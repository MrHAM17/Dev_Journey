package com.comforthotelbookingapp.app.modules.hoteldetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.databinding.RowFramenineteenBinding
import com.comforthotelbookingapp.app.modules.hoteldetails.`data`.model.FramenineteenRowModel
import kotlin.Int
import kotlin.collections.List

class FrameNineteenAdapter(
  var list: List<FramenineteenRowModel>
) : RecyclerView.Adapter<FrameNineteenAdapter.RowFramenineteenVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFramenineteenVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_framenineteen,parent,false)
    return RowFramenineteenVH(view)
  }

  override fun onBindViewHolder(holder: RowFramenineteenVH, position: Int) {
    val framenineteenRowModel = FramenineteenRowModel()
    // TODO uncomment following line after integration with data source
    // val framenineteenRowModel = list[position]
    holder.binding.framenineteenRowModel = framenineteenRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FramenineteenRowModel>) {
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
      item: FramenineteenRowModel
    ) {
    }
  }

  inner class RowFramenineteenVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFramenineteenBinding = RowFramenineteenBinding.bind(itemView)
    init {
      binding.btnFive.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FramenineteenRowModel())
      }
    }
  }
}
