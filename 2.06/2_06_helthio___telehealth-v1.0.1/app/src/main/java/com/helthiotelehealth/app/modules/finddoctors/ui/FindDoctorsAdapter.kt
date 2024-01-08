package com.helthiotelehealth.app.modules.finddoctors.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.databinding.RowFinddoctorsBinding
import com.helthiotelehealth.app.modules.finddoctors.`data`.model.FinddoctorsRowModel
import kotlin.Int
import kotlin.collections.List

class FindDoctorsAdapter(
  var list: List<FinddoctorsRowModel>
) : RecyclerView.Adapter<FindDoctorsAdapter.RowFinddoctorsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFinddoctorsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_finddoctors,parent,false)
    return RowFinddoctorsVH(view)
  }

  override fun onBindViewHolder(holder: RowFinddoctorsVH, position: Int) {
    val finddoctorsRowModel = FinddoctorsRowModel()
    // TODO uncomment following line after integration with data source
    // val finddoctorsRowModel = list[position]
    holder.binding.finddoctorsRowModel = finddoctorsRowModel
  }

  override fun getItemCount(): Int = 7
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FinddoctorsRowModel>) {
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
      item: FinddoctorsRowModel
    ) {
    }
  }

  inner class RowFinddoctorsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFinddoctorsBinding = RowFinddoctorsBinding.bind(itemView)
  }
}
